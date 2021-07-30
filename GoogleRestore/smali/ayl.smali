.class final Layl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldkh;


# static fields
.field static final a:Ldkh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Layl;

    invoke-direct {v0}, Layl;-><init>()V

    sput-object v0, Layl;->a:Ldkh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Laym;->a(I)Laym;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
