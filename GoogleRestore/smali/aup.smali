.class final Laup;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldkh;


# static fields
.field static final a:Ldkh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laup;

    invoke-direct {v0}, Laup;-><init>()V

    sput-object v0, Laup;->a:Ldkh;

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
    invoke-static {p1}, Lauq;->a(I)Lauq;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
