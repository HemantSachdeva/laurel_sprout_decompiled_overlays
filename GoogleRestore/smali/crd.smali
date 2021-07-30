.class public final Lcrd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcqo;

.field public final b:Z

.field public final c:Lcrc;

.field public final d:I


# direct methods
.method private constructor <init>(Lcrc;)V
    .locals 3

    .line 1
    sget-object v0, Lcql;->a:Lcql;

    .line 2
    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v1, v0, v2}, Lcrd;-><init>(Lcrc;ZLcqo;I)V

    return-void
.end method

.method public constructor <init>(Lcrc;ZLcqo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrd;->c:Lcrc;

    iput-boolean p2, p0, Lcrd;->b:Z

    iput-object p3, p0, Lcrd;->a:Lcqo;

    iput p4, p0, Lcrd;->d:I

    return-void
.end method

.method public static a(C)Lcrd;
    .locals 0

    .line 4
    invoke-static {p0}, Lcqo;->b(C)Lcqo;

    move-result-object p0

    invoke-static {p0}, Lcrd;->a(Lcqo;)Lcrd;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcqo;)Lcrd;
    .locals 2

    new-instance v0, Lcrd;

    new-instance v1, Lcqy;

    .line 5
    invoke-direct {v1, p0}, Lcqy;-><init>(Lcqo;)V

    invoke-direct {v0, v1}, Lcrd;-><init>(Lcrc;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcrd;
    .locals 4

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcrd;->a(C)Lcrd;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcrd;

    new-instance v1, Lcra;

    .line 9
    invoke-direct {v1, p0}, Lcra;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcrd;-><init>(Lcrc;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcrd;
    .locals 5

    new-instance v0, Lcrd;

    iget-object v1, p0, Lcrd;->c:Lcrc;

    iget-object v2, p0, Lcrd;->a:Lcqo;

    iget v3, p0, Lcrd;->d:I

    .line 3
    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcrd;-><init>(Lcrc;ZLcqo;I)V

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    .line 10
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcrb;

    .line 11
    invoke-direct {v0, p0, p1}, Lcrb;-><init>(Lcrd;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final b(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcrd;->c:Lcrc;

    .line 12
    invoke-interface {v0, p0, p1}, Lcrc;->a(Lcrd;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
