package br.com.adrianob.modelo;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author Administrador
 */
@Entity(name = "conta")
public class Conta implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column
    private String numero;
    @Column
    private String agencia;
    @Column
    private String tipo;
    @Column(length = 13, precision = 2)
    private float saldo;

    @ManyToOne(targetEntity = Pessoa.class)
    private Pessoa titular;
    @OneToMany(mappedBy = "conta", targetEntity = Transacao.class,
            fetch = FetchType.LAZY)
    private List<Transacao> transacoes;

    public List<Transacao> getTransacoes() {
        return transacoes;
    }

    public void setTransacoes(List<Transacao> transacoes) {
        this.transacoes = transacoes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getAgencia() {
        return agencia;
    }

    public void setAgencia(String agencia) {
        this.agencia = agencia;
    }

    public float getSaldo() {
        return saldo;
    }

    public void setSaldo(float saldo) {
        this.saldo = saldo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Pessoa getTitular() {
        return titular;
    }

    public void setTitular(Pessoa titular) {
        this.titular = titular;
    }

    public Conta() {
    }

    public void depositar(float valor) {
        this.saldo += valor;
    }

    public void sacar(float valor) throws Exception {
        if (this.saldo < valor) {
            throw new Exception("Saldo insuficiente!");
        }
        this.saldo -= valor;
    }
}
