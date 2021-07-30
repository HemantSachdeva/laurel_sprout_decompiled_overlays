.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldbm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ldbj;

    const-class v1, Ldga;

    .line 1
    invoke-static {v1}, Ldbj;->a(Ljava/lang/Class;)Ldbi;

    move-result-object v1

    const-class v2, Ldbb;

    .line 2
    invoke-static {v2}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldbi;->a(Ldbt;)V

    const-class v2, Lddi;

    .line 3
    invoke-static {v2}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldbi;->a(Ldbt;)V

    const-class v2, Ldgz;

    .line 4
    invoke-static {v2}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldbi;->a(Ldbt;)V

    sget-object v2, Ldgc;->a:Ldbl;

    .line 5
    invoke-virtual {v1, v2}, Ldbi;->a(Ldbl;)V

    .line 6
    invoke-virtual {v1}, Ldbi;->a()Ldbj;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 7
    const-string v1, "fire-installations"

    const-string v2, "16.3.3_1p"

    invoke-static {v1, v2}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Ldbj;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
