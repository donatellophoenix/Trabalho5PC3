package br.com.prog3.trabalho5pc3.rafaelpadilha;

public class Disciplina {
	Integer codigo;
	String descricao;
	Integer cargaHoraria;

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Integer getCargaHoraria() {
		return cargaHoraria;
	}

	public void setCargaHoraria(Integer cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}

	@Override
	public String toString() {
		return "Disciplina [Codigo= " + codigo + ", Descricao= " + descricao + ", CargaHoraria= " + cargaHoraria + "]";
	}
}
