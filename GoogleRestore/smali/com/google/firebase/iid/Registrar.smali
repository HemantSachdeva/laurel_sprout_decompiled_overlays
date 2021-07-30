.class public final Lcom/google/firebase/iid/Registrar;
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
.method public getComponents()Ljava/util/List;
    .locals 6

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 1
    invoke-static {v0}, Ldbj;->a(Ljava/lang/Class;)Ldbi;

    move-result-object v0

    const-class v1, Ldbb;

    .line 2
    invoke-static {v1}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbi;->a(Ldbt;)V

    const-class v1, Lddf;

    .line 3
    invoke-static {v1}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbi;->a(Ldbt;)V

    const-class v1, Ldgz;

    .line 4
    invoke-static {v1}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbi;->a(Ldbt;)V

    const-class v1, Lddi;

    .line 5
    invoke-static {v1}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbi;->a(Ldbt;)V

    const-class v1, Ldga;

    .line 6
    invoke-static {v1}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbi;->a(Ldbt;)V

    sget-object v1, Ldev;->a:Ldbl;

    .line 7
    invoke-virtual {v0, v1}, Ldbi;->a(Ldbl;)V

    .line 8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldbi;->a(I)V

    .line 9
    invoke-virtual {v0}, Ldbi;->a()Ldbj;

    move-result-object v0

    const-class v2, Ldfs;

    .line 10
    invoke-static {v2}, Ldbj;->a(Ljava/lang/Class;)Ldbi;

    move-result-object v2

    const-class v3, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 11
    invoke-static {v3}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldbi;->a(Ldbt;)V

    sget-object v3, Ldew;->a:Ldbl;

    .line 12
    invoke-virtual {v2, v3}, Ldbi;->a(Ldbl;)V

    .line 13
    invoke-virtual {v2}, Ldbi;->a()Ldbj;

    move-result-object v2

    .line 14
    const-string v3, "fire-iid"

    const-string v4, "20.2.5"

    invoke-static {v3, v4}, Ldgy;->a(Ljava/lang/String;Ljava/lang/String;)Ldbj;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ldbj;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v1

    const/4 v0, 0x2

    aput-object v3, v4, v0

    .line 15
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
