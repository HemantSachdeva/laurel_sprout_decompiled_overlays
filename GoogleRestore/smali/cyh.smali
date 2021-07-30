.class final Lcyh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lcyh;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcyh;

    new-instance v1, Lcyg;

    .line 1
    invoke-direct {v1}, Lcyg;-><init>()V

    invoke-direct {v0, v1}, Lcyh;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcyh;->a:Lcyh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcyh;->b:Ljava/lang/Throwable;

    return-void
.end method
