.class public final Lbth;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lbvv;

.field public b:Lcqu;

.field public c:Lcqu;

.field public d:Lcqu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcqb;->a:Lcqb;

    iput-object p1, p0, Lbth;->b:Lcqu;

    sget-object p1, Lcqb;->a:Lcqb;

    iput-object p1, p0, Lbth;->c:Lcqu;

    sget-object p1, Lcqb;->a:Lcqb;

    iput-object p1, p0, Lbth;->d:Lcqu;

    return-void
.end method
