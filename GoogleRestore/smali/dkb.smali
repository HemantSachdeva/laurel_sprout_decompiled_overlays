.class public abstract Ldkb;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# instance fields
.field protected b:Ldjt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldkd;-><init>()V

    .line 2
    sget-object v0, Ldjt;->c:Ldjt;

    iput-object v0, p0, Ldkb;->b:Ldjt;

    return-void
.end method


# virtual methods
.method final e()Ldjt;
    .locals 2

    iget-object v0, p0, Ldkb;->b:Ldjt;

    iget-boolean v1, v0, Ldjt;->b:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ldjt;->c()Ldjt;

    move-result-object v0

    iput-object v0, p0, Ldkb;->b:Ldjt;

    :cond_0
    iget-object v0, p0, Ldkb;->b:Ldjt;

    return-object v0
.end method
