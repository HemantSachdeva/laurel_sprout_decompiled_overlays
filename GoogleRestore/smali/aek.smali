.class public final Laek;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbpa;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbmy;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:Lahk;

.field private final h:I

.field private final i:Lacy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbmy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lahk;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lacy;->a(Landroid/content/Context;)Lacy;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laek;->a:Landroid/content/Context;

    iput-object p2, p0, Laek;->b:Lbmy;

    iput-object p3, p0, Laek;->c:Ljava/lang/String;

    iput-object p4, p0, Laek;->d:Ljava/lang/String;

    iput-object p5, p0, Laek;->e:Ljava/lang/String;

    iput-object p6, p0, Laek;->f:[Ljava/lang/String;

    iput-object p7, p0, Laek;->g:Lahk;

    iput p8, p0, Laek;->h:I

    iput-object v0, p0, Laek;->i:Lacy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 13

    iget v0, p0, Laek;->h:I

    .line 2
    sget-object v1, Land;->x:Lccv;

    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Restore device and SIM contacts failed, retrying."

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Laek;->b:Lbmy;

    iget-object v0, p0, Laek;->c:Ljava/lang/String;

    iget-object v1, p0, Laek;->d:Ljava/lang/String;

    iget-object v2, p0, Laek;->e:Ljava/lang/String;

    iget-object v3, p0, Laek;->f:[Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0, v1, v2, v3}, Lbmy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbpi;

    move-result-object p1

    new-instance v0, Lael;

    iget-object v1, p0, Laek;->a:Landroid/content/Context;

    iget-object v2, p0, Laek;->g:Lahk;

    iget v3, p0, Laek;->h:I

    add-int/lit8 v3, v3, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lael;-><init>(Landroid/content/Context;Lahk;I)V

    .line 6
    invoke-virtual {p1, v0}, Lbpi;->a(Lbpd;)V

    new-instance v0, Laek;

    iget-object v5, p0, Laek;->a:Landroid/content/Context;

    iget-object v6, p0, Laek;->b:Lbmy;

    iget-object v7, p0, Laek;->c:Ljava/lang/String;

    iget-object v8, p0, Laek;->d:Ljava/lang/String;

    iget-object v9, p0, Laek;->e:Ljava/lang/String;

    iget-object v10, p0, Laek;->f:[Ljava/lang/String;

    iget-object v11, p0, Laek;->g:Lahk;

    iget v1, p0, Laek;->h:I

    add-int/lit8 v12, v1, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Laek;-><init>(Landroid/content/Context;Lbmy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lahk;I)V

    .line 7
    invoke-virtual {p1, v0}, Lbpi;->a(Lbpa;)V

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Restore device and SIM contacts failed."

    invoke-virtual {v0, v3, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    instance-of v0, p1, Lbep;

    if-eqz v0, :cond_1

    .line 10
    check-cast p1, Lbep;

    invoke-virtual {p1}, Lbep;->a()I

    move-result p1

    goto :goto_0

    .line 12
    :cond_1
    const/16 p1, 0x8

    .line 10
    :goto_0
    iget-object v0, p0, Laek;->i:Lacy;

    .line 11
    sget-object v1, Laxj;->c:Laxj;

    sget-object v3, Laxl;->c:Laxl;

    invoke-virtual {v0, v1, v3, p1}, Lacy;->a(Laxj;Laxl;I)V

    iget-object p1, p0, Laek;->g:Lahk;

    .line 12
    invoke-static {p1, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a(Lahk;Z)V

    return-void
.end method
