.class final Lvf;
.super Lve;
.source "PG"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lvd;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lve;-><init>(Lvd;)V

    iput-boolean p2, p0, Lvf;->a:Z

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    iget-boolean v0, p0, Lvf;->a:Z

    return v0
.end method
