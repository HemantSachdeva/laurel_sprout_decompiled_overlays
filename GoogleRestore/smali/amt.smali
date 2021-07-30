.class public final synthetic Lamt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamt;->a:Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lamt;->a:Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;

    new-instance v1, Lcbr;

    invoke-direct {v1}, Lcbr;-><init>()V

    iput-object v0, v1, Lcbr;->a:Landroid/content/Context;

    const-string v2, "PIXEL_MIGRATE_ANDROID_PRIMES"

    iput-object v2, v1, Lcbr;->b:Ljava/lang/String;

    new-instance v2, Lcbs;

    iget-object v3, v1, Lcbr;->a:Landroid/content/Context;

    iget-object v4, v1, Lcbr;->b:Ljava/lang/String;

    iget-object v5, v1, Lcbr;->c:Lcbk;

    iget-object v1, v1, Lcbr;->d:Lcbp;

    invoke-direct {v2, v3, v4, v5, v1}, Lcbs;-><init>(Landroid/content/Context;Ljava/lang/String;Lcbk;Lcbp;)V

    new-instance v1, Lamu;

    invoke-direct {v1, v2}, Lamu;-><init>(Lcbs;)V

    invoke-static {}, Lbtp;->a()Lbto;

    move-result-object v2

    invoke-virtual {v2}, Lbto;->a()Lbtp;

    move-result-object v2

    new-instance v3, Lbrd;

    invoke-direct {v3}, Lbrd;-><init>()V

    iput-object v0, v3, Lbrd;->a:Landroid/app/Application;

    new-instance v4, Lbst;

    invoke-direct {v4, v0}, Lbst;-><init>(Landroid/app/Application;)V

    iput-object v4, v3, Lbrd;->c:Lcrm;

    invoke-static {}, Lbtp;->a()Lbto;

    move-result-object v0

    invoke-virtual {v0}, Lbto;->a()Lbtp;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbrd;->a(Lbtp;)V

    sget-object v0, Lbsu;->a:Lcrm;

    iput-object v0, v3, Lbrd;->e:Lcrm;

    new-instance v0, Lbsw;

    invoke-direct {v0}, Lbsw;-><init>()V

    iput-object v0, v3, Lbrd;->f:Lbud;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lbsv;

    invoke-direct {v0, v1}, Lbsv;-><init>(Leip;)V

    iput-object v0, v3, Lbrd;->b:Lcrm;

    invoke-virtual {v3, v2}, Lbrd;->a(Lbtp;)V

    iget-object v0, v3, Lbrd;->a:Landroid/app/Application;

    const-class v1, Landroid/app/Application;

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, v3, Lbrd;->b:Lcrm;

    const-class v1, Lcrm;

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, v3, Lbrd;->c:Lcrm;

    const-class v1, Lcrm;

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, v3, Lbrd;->d:Lbtp;

    const-class v1, Lbtp;

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, v3, Lbrd;->e:Lcrm;

    const-class v1, Lcrm;

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, v3, Lbrd;->f:Lbud;

    const-class v1, Lbud;

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lbre;

    iget-object v5, v3, Lbrd;->a:Landroid/app/Application;

    iget-object v6, v3, Lbrd;->b:Lcrm;

    iget-object v7, v3, Lbrd;->c:Lcrm;

    iget-object v8, v3, Lbrd;->d:Lbtp;

    iget-object v9, v3, Lbrd;->e:Lcrm;

    iget-object v10, v3, Lbrd;->f:Lbud;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lbre;-><init>(Landroid/app/Application;Lcrm;Lcrm;Lbtp;Lcrm;Lbud;)V

    invoke-static {v0}, Lbsh;->a(Lbsg;)Lbsh;

    move-result-object v0

    iget-object v1, v0, Lbsh;->a:Lbsi;

    invoke-interface {v1}, Lbsi;->b()V

    iget-object v0, v0, Lbsh;->a:Lbsi;

    invoke-interface {v0}, Lbsi;->c()V

    return-void
.end method
