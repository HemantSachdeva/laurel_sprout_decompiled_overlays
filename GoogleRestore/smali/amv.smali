.class public final synthetic Lamv;
.super Ljava/lang/Object;

# interfaces
.implements Leip;


# instance fields
.field public final a:Lcbs;


# direct methods
.method public constructor <init>(Lcbs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamv;->a:Lcbs;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lamv;->a:Lcbs;

    sget v1, Lcom/google/android/apps/pixelmigrate/component/MigrateApplication;->a:I

    return-object v0
.end method
