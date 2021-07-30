.class public interface abstract annotation Lcus;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final a:Lcuq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/lang/String;

    .line 1
    const-string v1, "android_log_tag"

    invoke-static {v1, v0}, Lcuq;->a(Ljava/lang/String;Ljava/lang/Class;)Lcuq;

    move-result-object v0

    sput-object v0, Lcus;->a:Lcuq;

    return-void
.end method
