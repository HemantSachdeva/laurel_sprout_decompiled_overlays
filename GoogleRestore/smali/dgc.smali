.class public final synthetic Ldgc;
.super Ljava/lang/Object;

# interfaces
.implements Ldbl;


# static fields
.field public static final a:Ldbl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldgc;

    invoke-direct {v0}, Ldgc;-><init>()V

    sput-object v0, Ldgc;->a:Ldbl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldbk;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ldfz;

    const-class v1, Ldbb;

    invoke-interface {p1, v1}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbb;

    const-class v2, Ldgz;

    invoke-interface {p1, v2}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldgz;

    const-class v3, Lddi;

    invoke-interface {p1, v3}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lddi;

    invoke-direct {v0, v1, v2, p1}, Ldfz;-><init>(Ldbb;Ldgz;Lddi;)V

    return-object v0
.end method
