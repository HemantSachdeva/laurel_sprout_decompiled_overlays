.class final Lca;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lae;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lac;
    .locals 1

    new-instance p1, Lcb;

    .line 1
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcb;-><init>(Z)V

    return-object p1
.end method
