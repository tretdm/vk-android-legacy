.class Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field updated:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->updated:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->updated:Z

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->updated:Z

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$400(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    goto :goto_0
.end method
