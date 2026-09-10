.class Lcom/vkontakte/android/PhotoViewerActivity$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$1;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$1;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$0(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$1;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0, v1, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->overridePendingTransition(II)V

    .line 61
    return-void
.end method
