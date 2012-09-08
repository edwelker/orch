var age_descr = {
  adult: 'adult',
  senior: 'senior (60 &amp; up)',
  student: 'full-time student',
  older: '12 &amp; older',
  younger: '11 &amp; under'
};

var items = [
  {
    name: "season subscriptions",
    prefix: "subscription",
    prices: {
    adult: [100, 80],
    senior: [84, 64],
    student: [48, 40]
  },
  remain1: ["A","B","J"],
  remain2 : ["C","D","E","F","G","H","I","K"],
  extra: '<p>\
Which Symphonic Pops performance? \
&nbsp; 3/16<input type="radio" name="subscription_pops_date" value="March16" checked="true" />\
&nbsp; 3/17<input type="radio" name="subscription_pops_date" value="March17" />\
</p>'
  },
  {
    name: "Beethoven and Bernstein",
    prefix: "oct6",
    date: "October 6, 2012",
    prices: {
    adult: [25, 20],
    senior: [21, 16],
    student: [12, 10]
  },
  remain1: ["A","B","J"],
  remain2 : ["C","D","E","F","G","H","I","K"]
  },
  {
    name: "Tchaikovsky and Rachmaninoff",
    prefix: "dec1",
    date: "December 1, 2012",
    prices: {
    adult: [25, 20],
    senior: [21, 16],
    student: [12, 10]
  },
  remain1: ["A","B","J"],
  remain2 : ["C","D","E","F","G","H","I","K"]
  },
  {
    name: "Barber and Sibelius",
    prefix: "feb2",
    date: "February 2, 2013",
    prices: {
    adult: [25, 20],
    senior: [21, 16],
    student: [12, 10]
  },
  remain1: ["A","B","J"],
  remain2 : ["C","D","E","F","G","H","I","K"]
  },
  {
    ypc: 'yes',
    name: "Young People's Concert (AM)",
    prefix: "feb23am",
    date: "February 23, 2013 (10:30 am)",
    prices: {
      older: 15,
      younger: 0
    }
  },
  {
    ypc: 'yes',
    name: "Young People's Concert (PM)",
    prefix: "feb23pm",
    date: "February 23, 2013 (1:00 pm)",
    prices: {
      older: 15,
      younger: 0
    }
  },
  {
    name: "Symphonic Pops (Saturday)",
    prefix: "mar16",
    date: "March 16, 2013, 7:30 pm",
    prices: {
    adult: [25, 20],
    senior: [21, 16],
    student: [12, 10]
  },
  remain1: ["A","B","J"],
  remain2 : ["C","D","E","F","G","H","I","K"]
  },
  {
    name: "Symphonic Pops (Sunday)",
    prefix: "mar17",
    date: "March 17, 2013, 3:00 pm",
    prices: {
    adult: [25, 20],
    senior: [21, 16],
    student: [12, 10]
  },
  remain1: ["A","B","J"],
  remain2 : ["C","D","E","F","G","H","I","K"]
  },
  {
    name: "Wagner and Stravinsky",
    prefix: "jun1",
    date: "June 1, 2013",
    prices: {
    adult: [25, 20],
    senior: [21, 16],
    student: [12, 10]
  },
  remain1: ["A","B","J"],
  remain2 : ["C","D","E","F","G","H","I","K"]
  }
];

/*
adapted from http://stackoverflow.com/questions/7616461/generate-a-hash-from-string-in-javascript-jquery
*/
function hashCode(s) {
  var hash = 0, i, char;
  if (s.length == 0) return hash;
  for (i = 0; i < s.length; i++) {
    char = s.charCodeAt(i);
    hash = ((hash<<5)-hash)+char;
    hash = hash & hash; // Convert to 32bit integer
  }
  return hash;
}

function isYPC(item) {
  return ('ypc' in item);
}

function getQtyID(item, age) {
  return item.prefix + '_' + age + '_qty';
}

function getSectionID(item, age) {
  return item.prefix + '_' + age + '_section';
}

function tabentry_ypc(item) {
  var str;
  str = '<tr><td rowspan="2"><p><b>' + item.name + '</b>';
  if ('date' in item) {
    str += '<br />' + item.date;
  }
  str += '</p></td>\n';
  var first = 1
  for (var age in item.prices) {
    if (first) { first = 0; } else { str += '<tr>'; }
    str += '<td><input type="text" size="3" id="'
      + getQtyID(item,age)
      + '" onchange="javascript:showPrice()" /></td>';
    var age_str = age_descr[age];
    str += '<td>' + age_str;
    if (item.prices[age] > 0) {
      str += ' @ $' + item.prices[age] + ' each</td>';
    } else {
      str += ' FREE</td>';
    }
    if (age == 'older') {
      str += '<td rowspan="2"><p>general admission</p></td></tr>';
    } else {
      str += '</tr>'
    }
  }
  return str;
}

function tabentry(item) {

  if (isYPC(item)) {
    return tabentry_ypc(item);
  }

  var str;
  str = '<tr><td rowspan="3"><p><b>' + item.name + '</b>';
  if ('date' in item) {
    str += '<br />' + item.date;
  }
  str += '</p></td>\n';
  var first = 1
  for (var age in item.prices) {
    if (first) { first = 0; } else { str += '<tr>\n'; }
    str += '<td><input type="text" size="3" id="'
      + getQtyID(item,age)
      + '" onchange="javascript:showPrice()" /></td>';
    var age_str = age_descr[age];
    str += '<td>' + age_str + ' @ $' + item.prices[age][0] + '/$' + item.prices[age][1] + ' each</td>';
    str += '<td><select name="' + getSectionID(item,age)
      + '" id="' + getSectionID(item,age) + '" onchange="javascript:showPrice()">';
    str += '<option selected="selected">choose a section</option>';
    for (var j in item.remain1) {
      str += '<option value="' + item.remain1[j] + '"';
      if (j == item.remain1.length-1) {
	str += ' class="divider"';
      }
      str += '>' + item.remain1[j] + ' &mdash; $' + item.prices[age][0] + ' each</option>';
    }
    for (var j in item.remain2) {
      str += '<option value="' + item.remain2[j] + '"';
      str += '>' + item.remain2[j] + ' &mdash; $' + item.prices[age][1] + ' each</option>';
    }

    str += '</select></td></tr>\n';
  }

  if ('extra' in item) {
    str += '<tr><td colspan="3">' + item.extra + '</td></tr>';
  }

  return str;
}


var nonnegint = /^\s*\d*\s*$/;
var whitespace = /^\s*$/;

function isNonnegInt(val) { return nonnegint.test(val); }

function getQuantity(item, age) {
  var val;
  val = document.getElementById(getQtyID(item,age)).value;
  if (whitespace.test(val)) { return 0; }
  return parseInt(val);
}

function getPricePerTicket(item, age) {
  if (isYPC(item)) {
    return item.prices[age];
  }
  var section, pricePerTicket;
  section = document.getElementById(getSectionID(item,age)).value;
//alert('getPricePerTicket()  age: ' + age + '  section: ' + section);
  if ($.inArray(section, item.remain1) > -1) {
    pricePerTicket = item.prices[age][0];
  } else if ($.inArray(section, item.remain2) > -1) {
    pricePerTicket = item.prices[age][1];
  } else {
    pricePerTicket = -1;
  }
  return pricePerTicket;
}

function getLinePrice(item, age) {
  var qty = getQuantity(item, age);;
  var pricePerTicket = getPricePerTicket(item, age);
  if (qty > 0) {
//alert ('age: ' + age + '  qty: ' + qty + '  price_per: ' + pricePerTicket);
    }
  if (pricePerTicket >= 0) {
    return qty * pricePerTicket;
  } else {
    return 0;
  }
}

function getDonationAmt() {
  var val = parseFloat($('#donation').val());
  if (isNaN(val)) {
    return 0;
  }
  return val;
}

function getTotalPrice() {
  var total = 0;
  var item;
  for (var i in items) {
    item = items[i];
    for (var age in item.prices) {
      total += getLinePrice(item, age);
    }
  }
  total += getDonationAmt();
  return total;
}

function showPrice(){
//alert('showPrice()');
  document.getElementById("TotalPrice").innerHTML = "$" + getTotalPrice();
//alert('goodbye');
}

function orderTickets() {
  var qty, ppt;
  var total_qty = 0;
  var comment = '';

  for (var i in items) {
    var item = items[i];
    var event_qty = 0;
    for (var age in item.prices) {
      qty = document.getElementById(getQtyID(item,age)).value;
      if (!isNonnegInt(qty)) {
	alert ('You have entered an invalid number of tickets.');
	return false;
      }
      qty = parseInt(qty);
      if (qty > 0) {
	total_qty += qty;
	event_qty += qty;
	ppt = getPricePerTicket(item, age);
	if (ppt < 0) {
	  alert ('You must specify a section for all seats.');
	  return false;
	}
	comment += getQtyID(item,age) + '=' + qty + '  ';
	if (!('ypc' in item)) {
	  comment += getSectionID(item,age) + '='
	    + document.getElementById(getSectionID(item,age)).value + '  ';
	}
      }
    }
    if (item.prefix == 'subscription' && event_qty > 0) {
      var date = $('input:radio[name=subscription_pops_date]:checked').val();
      if (date != 'March16' && date != 'March17') {
	alert ('You must choose a Pops Concert date '
	       + 'for your season subscription.');
	return false;
      }
      comment += 'subscription_pops_date=' + date + '  ';
    }
  }

  if (total_qty < 1) {
    alert ('You have not ordered any tickets.');
    return false;
  }

  for (var i in items) {
    var item = items[i];
    if ('ypc' in item) {
      var yqty = document.getElementById(getQtyID(item,'younger')).value;
      var oqty = document.getElementById(getQtyID(item,'older')).value;
      if (parseInt(yqty) > 0 && !(parseInt(oqty) > 0)) {
	alert ('To get free 11 & under tickets for a Young People\'s '
	       + 'Concert, you must order at least one 12 & older ticket '
	       + 'for the same concert.');
	return false;
      }
    }
  }

  var donation = getDonationAmt();
  if (donation < 0) {
    alert ('You have entered an invalid donation amount.');
    return false;
  } else if (donation > 0) {
    comment += 'donation=' + donation + '  ';
  }

  var total = getTotalPrice();
  $('#chargetotal').val(total);
  $('#comments').val(comment);

//alert ('orderTickets(): all tests passed, total=' + total);
//alert ('comment: ' + $('#comments').val());
//alert ('chargetotal: ' + $('#chargetotal').val());
  return true;
}


$(document).ready(function(){
  for (var i in items) {
    $("table#thetable").append( tabentry(items[i]) );
    $("table#thetable").append( '<tr><td colspan="4"><hr></td></tr>' );
  }
  $("table#thetable").append( '<tr><td><p><b>I would like to make a donation to the Columbia Orchestra:</b><p></td><td><p style="white-space:nowrap;">$<input type="text" id="donation" name="donation" size="3" onchange="javascript:showPrice()"/></p></td></tr>' );
  /*
  $("table#thetable").append( '<tr><td><p><b>Discount code?  <input type="text" id="discount_code" name="discount_code" size="10" maxlength="10" /></b></p></td></tr>' );
  */
});

