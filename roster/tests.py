"""
This file demonstrates two different styles of tests (one doctest and one
unittest). These will both pass when you run "manage.py test".

Replace these with more appropriate tests for your application.
"""

from django.test import TestCase
from orch.roster.models import Instrument, OrchestraMember

class InstrumentTestCase(TestCase):
    def setUp(self):
        self.cello = Instrument.objects.create(name="Cello", order="3")
        self.violin = Instrument.objects.create(name="Violin")
        self.viola = Instrument.objects.create(order="1")

    def testInstrumentsNames(self):
        self.assertEqual(self.cello.__unicode__(), "Cello")
        self.assertEqual(self.violin.__unicode__(), "Violin")
        self.assertRaises(TypeError, self.violin.name, "violin")

    def testViola(self):
        self.assertEqual(self.viola.name, "")
        self.assertEqual(self.viola.__unicode__(), "")

    def testOrder(self):
        self.assertEqual(self.cello.getorder(), "3")
        self.assertEqual(self.cello.order, "3")
        self.assertEqual(self.cello.getorder(), self.cello.order)

    def testDefaultOrder(self):
        self.assertEqual(self.violin.getorder(), '0')

    def testFalseOrder(self):
        self.assertRaises(TypeError, self.cello.getorder(), '5')


class OrchestraMemberTestCase(TestCase):
    def setUp(self):
        self.cello = Instrument.objects.create(name="Cello", order="3")
        self.joe = OrchestraMember.objects.create(first_name="Joe", middle_name="Tom", last_name="Sally", instrument=self.cello, principal=False, concertmaster=False, concertmistress=False, bio="blah blah blah", noncurrent_member=False)

    def testInstForeignKey(self):
        self.assertEqual(self.joe.instrument.id, self.cello.id)
