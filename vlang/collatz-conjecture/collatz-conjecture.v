module main

struct Count {
	mut: 
	  	count int
		num int

}

fn collatz(number int) !int {
	if number <= 0 {
		return error('collatz(${number}) should return an error, not ${number}')
	}
	mut c := Count{0, number}
	count_loop(mut &c)
	return c.count
}

fn count_loop(mut c Count) {
	if c.num == 1 {
		// return 1
	} else if c.num % 2 == 0 {
		c.count = c.count + 1
		c.num = c.num / 2
		count_loop(mut c)
	} else {
		c.count = c.count + 1
		c.num = c.num * 3 + 1
		count_loop(mut c)
	}
}