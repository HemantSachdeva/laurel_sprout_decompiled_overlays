.class public Lcom/google/firebase/crash/component/FirebaseCrashRegistrar;
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
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ldbj;

    const-class v1, Lcom/google/firebase/crash/FirebaseCrash;

    .line 1
    invoke-static {v1}, Ldbj;->a(Ljava/lang/Class;)Ldbi;

    move-result-object v1

    const-class v2, Ldbb;

    .line 2
    invoke-static {v2}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldbi;->a(Ldbt;)V

    const-class v2, Lddf;

    .line 3
    invoke-static {v2}, Ldbt;->a(Ljava/lang/Class;)Ldbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldbi;->a(Ldbt;)V

    new-instance v2, Ldbt;

    const-class v3, Ldbe;

    .line 4
    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ldbt;-><init>(Ljava/lang/Class;I)V

    .line 5
    invoke-virtual {v1, v2}, Ldbi;->a(Ldbt;)V

    sget-object v2, Ldct;->a:Ldbl;

    .line 6
    invoke-virtual {v1, v2}, Ldbi;->a(Ldbl;)V

    .line 7
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ldbi;->a(I)V

    .line 8
    invoke-virtual {v1}, Ldbi;->a()Ldbj;

    move-result-object v1

    aput-object v1, v0, v4

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
