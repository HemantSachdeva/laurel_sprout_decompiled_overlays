.class final Lauk;
.super Lbqb;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbqb;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbet;Lbeu;)Lben;
    .locals 7

    const/4 v0, 0x0

    check-cast v0, Lbms;

    new-instance v0, Laum;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Laum;-><init>(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbet;Lbeu;)V

    return-object v0
.end method
