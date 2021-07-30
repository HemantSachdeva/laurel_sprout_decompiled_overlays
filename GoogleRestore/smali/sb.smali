.class public final Lsb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final d:Lfi;


# instance fields
.field public a:I

.field public b:Lqf;

.field public c:Lqf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfi;

    .line 1
    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lfi;-><init>(I)V

    sput-object v0, Lsb;->d:Lfi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lsb;
    .locals 1

    sget-object v0, Lsb;->d:Lfi;

    .line 3
    invoke-virtual {v0}, Lfi;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsb;

    if-nez v0, :cond_0

    new-instance v0, Lsb;

    invoke-direct {v0}, Lsb;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static a(Lsb;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsb;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsb;->b:Lqf;

    iput-object v0, p0, Lsb;->c:Lqf;

    sget-object v0, Lsb;->d:Lfi;

    .line 4
    invoke-virtual {v0, p0}, Lfi;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()V
    .locals 1

    :cond_0
    sget-object v0, Lsb;->d:Lfi;

    .line 2
    invoke-virtual {v0}, Lfi;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method
