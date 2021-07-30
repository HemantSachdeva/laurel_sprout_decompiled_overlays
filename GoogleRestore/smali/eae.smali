.class final Leae;
.super Ldxd;
.source "PG"


# instance fields
.field final a:Ldww;

.field final b:Ldwp;

.field final c:Leaq;

.field final d:Lear;

.field e:Leen;

.field f:Z

.field g:Z

.field h:Ldza;

.field final synthetic i:Lefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldxd;-><init>()V

    return-void
.end method

.method public constructor <init>(Lefs;Ldww;)V
    .locals 6

    iput-object p1, p0, Leae;->i:Lefs;

    invoke-direct {p0}, Ldxd;-><init>()V

    iput-object p2, p0, Leae;->a:Ldww;

    .line 1
    invoke-virtual {p1}, Lefs;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subchannel"

    invoke-static {v1, v0}, Ldwp;->a(Ljava/lang/String;Ljava/lang/String;)Ldwp;

    move-result-object v0

    iput-object v0, p0, Leae;->b:Ldwp;

    .line 2
    new-instance v1, Lear;

    iget-object v2, p1, Lefs;->j:Lehx;

    .line 3
    invoke-interface {v2}, Lehx;->a()J

    move-result-wide v2

    iget-object p2, p2, Ldww;->a:Ljava/util/List;

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Subchannel for "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, v2, v3, p2}, Lear;-><init>(Ldwp;JLjava/lang/String;)V

    iput-object v1, p0, Leae;->d:Lear;

    new-instance p2, Leaq;

    iget-object p1, p1, Lefs;->j:Lehx;

    .line 5
    invoke-direct {p2, v1, p1}, Leaq;-><init>(Lear;Lehx;)V

    iput-object p2, p0, Leae;->c:Leaq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Leae;->i:Lefs;

    .line 10
    sget-object v1, Lefs;->a:Ljava/util/logging/Logger;

    .line 11
    const-string v1, "Subchannel.shutdown()"

    invoke-virtual {v0, v1}, Lefs;->a(Ljava/lang/String;)V

    iget-object v0, p0, Leae;->i:Lefs;

    .line 12
    iget-object v0, v0, Lefs;->k:Ldzb;

    new-instance v1, Lefq;

    invoke-direct {v1, p0}, Lefq;-><init>(Leae;)V

    invoke-virtual {v0, v1}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Leae;->i:Lefs;

    .line 6
    sget-object v1, Lefs;->a:Ljava/util/logging/Logger;

    .line 7
    const-string v1, "Subchannel.requestConnection()"

    invoke-virtual {v0, v1}, Lefs;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Leae;->f:Z

    .line 8
    const-string v1, "not started"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Leae;->e:Leen;

    .line 9
    invoke-virtual {v0}, Leen;->a()Lebf;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leae;->b:Ldwp;

    .line 13
    invoke-virtual {v0}, Ldwp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
