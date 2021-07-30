.class public abstract Lcvl;
.super Lcuz;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcuz;-><init>()V

    iput-object p1, p0, Lcvl;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcvl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/RuntimeException;Lcuy;)V
    .locals 1

    new-instance v0, Lcvk;

    .line 1
    invoke-direct {v0, p1, p2}, Lcvk;-><init>(Ljava/lang/RuntimeException;Lcuy;)V

    .line 2
    invoke-virtual {p0, v0}, Lcvl;->a(Lcuy;)V

    return-void
.end method
