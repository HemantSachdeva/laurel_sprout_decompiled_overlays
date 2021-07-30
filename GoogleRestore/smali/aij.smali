.class final synthetic Laij;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Laik;

.field private final b:J

.field private final c:J


# direct methods
.method public constructor <init>(Laik;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laij;->a:Laik;

    iput-wide p2, p0, Laij;->b:J

    iput-wide p4, p0, Laij;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Laij;->a:Laik;

    iget-wide v1, p0, Laij;->b:J

    iget-wide v3, p0, Laij;->c:J

    iget-object v5, v0, Laik;->a:Laim;

    mul-long v1, v1, v3

    sget-object v3, Land;->af:Lccv;

    invoke-virtual {v3}, Lccv;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Laim;->ab:Ljava/lang/Long;

    iget-object v0, v0, Laik;->a:Laim;

    invoke-virtual {v0}, Laim;->k()V

    return-void
.end method
