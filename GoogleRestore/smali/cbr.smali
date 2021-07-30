.class public final Lcbr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public final c:Lcbk;

.field public final d:Lcbp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcbk;->b:Lcbk;

    iput-object v0, p0, Lcbr;->c:Lcbk;

    .line 2
    sget-object v0, Lcbp;->b:Lcbp;

    iput-object v0, p0, Lcbr;->d:Lcbp;

    return-void
.end method
