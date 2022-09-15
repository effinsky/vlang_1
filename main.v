import os

fn main() {
	mut m := map[string]int{}
	m['nothing'] = 1
	m['something'] = 2
	m['anything'] = 3

	mut anything_key := 'anything' in m
	println('$anything_key')

	m.delete('anything')
	anything_key = 'anything' in m
	println('$anything_key')

	os.mkdir('executor') or { println('directory already exists') }

	mut new_list := [0, 1, 2]
	new_list << 666

	reversed_list := new_list.reverse()
	println('$reversed_list')

	// can we have some null safety?
	prom := Prometheus{
		id: '1'
		name: 'prom1'
		// grafana: Grafana{
		// 	id: '1'
		// 	name: 'graf1'
		// }
	}

	print('grafana name on prom: $prom.grafana.name\n')
}

struct Prometheus {
pub:
	id      string
	name    string
	grafana Grafana
}

struct Grafana {
pub:
	id   string
	name string
}
