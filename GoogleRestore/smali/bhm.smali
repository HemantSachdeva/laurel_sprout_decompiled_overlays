.class public final Lbhm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ltj;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private final d:Lbnx;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lbnx;->a:Lbnx;

    iput-object v0, p0, Lbhm;->d:Lbnx;

    return-void
.end method


# virtual methods
.method public final a()Lbho;
    .locals 5

    new-instance v0, Lbho;

    iget-object v1, p0, Lbhm;->a:Ltj;

    iget-object v2, p0, Lbhm;->b:Ljava/lang/String;

    iget-object v3, p0, Lbhm;->c:Ljava/lang/String;

    iget-object v4, p0, Lbhm;->d:Lbnx;

    .line 2
    invoke-direct {v0, v1, v2, v3, v4}, Lbho;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lbnx;)V

    return-object v0
.end method
