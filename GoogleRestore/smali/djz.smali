.class public final Ldjz;
.super Ldhk;
.source "PG"


# instance fields
.field private final a:Ldkd;


# direct methods
.method public constructor <init>(Ldkd;)V
    .locals 0

    invoke-direct {p0}, Ldhk;-><init>()V

    iput-object p1, p0, Ldjz;->a:Ldkd;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b([BILdjr;)Ldlj;
    .locals 2

    iget-object v0, p0, Ldjz;->a:Ldkd;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2, p3}, Ldkd;->a(Ldkd;[BIILdjr;)Ldkd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Ldie;Ldjr;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldjz;->a:Ldkd;

    invoke-static {v0, p1, p2}, Ldkd;->a(Ldkd;Ldie;Ldjr;)Ldkd;

    move-result-object p1

    return-object p1
.end method
