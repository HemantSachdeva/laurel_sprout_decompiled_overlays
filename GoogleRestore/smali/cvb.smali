.class public final Lcvb;
.super Lcvc;
.source "PG"


# static fields
.field public static final a:Lcvb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcvb;

    invoke-direct {v0}, Lcvb;-><init>()V

    sput-object v0, Lcvb;->a:Lcvb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcvc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)Lcuq;
    .locals 1

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 1
    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 2
    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcuq;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
