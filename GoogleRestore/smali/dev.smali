.class public final synthetic Ldev;
.super Ljava/lang/Object;

# interfaces
.implements Ldbl;


# static fields
.field public static final a:Ldbl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldev;

    invoke-direct {v0}, Ldev;-><init>()V

    sput-object v0, Ldev;->a:Ldbl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldbk;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/google/firebase/iid/FirebaseInstanceId;

    const-class v0, Ldbb;

    invoke-interface {p1, v0}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ldbb;

    const-class v0, Lddf;

    invoke-interface {p1, v0}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lddf;

    const-class v0, Ldgz;

    invoke-interface {p1, v0}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ldgz;

    const-class v0, Lddi;

    invoke-interface {p1, v0}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lddi;

    const-class v0, Ldga;

    invoke-interface {p1, v0}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ldga;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Ldbb;Lddf;Ldgz;Lddi;Ldga;)V

    return-object v6
.end method
