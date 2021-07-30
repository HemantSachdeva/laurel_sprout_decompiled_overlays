.class public final Leim;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Leio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leio;

    invoke-direct {v0}, Leio;-><init>()V

    sput-object v0, Leim;->a:Leio;

    return-void
.end method

.method protected constructor <init>(Leio;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Leim;->a:Leio;

    if-ne p1, v0, :cond_0

    .line 1
    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 1
    const-string v0, "nope"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
