.class public final synthetic Lddg;
.super Ljava/lang/Object;

# interfaces
.implements Ldbl;


# static fields
.field public static final a:Ldbl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lddg;

    invoke-direct {v0}, Lddg;-><init>()V

    sput-object v0, Lddg;->a:Ldbl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldbk;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lddh;

    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lddh;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
