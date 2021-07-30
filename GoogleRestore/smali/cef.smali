.class public final Lcef;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:J

.field static final b:J


# instance fields
.field public c:J

.field public d:J

.field public e:Ljava/lang/Long;

.field public f:Lceg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x76c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcfj;->a(II)Lcfj;

    move-result-object v0

    iget-wide v0, v0, Lcfj;->g:J

    invoke-static {v0, v1}, Lcft;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcef;->a:J

    .line 2
    const/16 v0, 0x834

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcfj;->a(II)Lcfj;

    move-result-object v0

    iget-wide v0, v0, Lcfj;->g:J

    invoke-static {v0, v1}, Lcft;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcef;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lceh;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcef;->a:J

    iput-wide v0, p0, Lcef;->c:J

    sget-wide v0, Lcef;->b:J

    iput-wide v0, p0, Lcef;->d:J

    new-instance v0, Lcem;

    .line 5
    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Lcem;-><init>(J)V

    iput-object v0, p0, Lcef;->f:Lceg;

    .line 6
    iget-object v0, p1, Lceh;->a:Lcfj;

    .line 7
    iget-wide v0, v0, Lcfj;->g:J

    iput-wide v0, p0, Lcef;->c:J

    .line 8
    iget-object v0, p1, Lceh;->b:Lcfj;

    .line 9
    iget-wide v0, v0, Lcfj;->g:J

    iput-wide v0, p0, Lcef;->d:J

    .line 10
    iget-object v0, p1, Lceh;->c:Lcfj;

    .line 11
    iget-wide v0, v0, Lcfj;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcef;->e:Ljava/lang/Long;

    .line 12
    iget-object p1, p1, Lceh;->d:Lceg;

    iput-object p1, p0, Lcef;->f:Lceg;

    return-void
.end method
