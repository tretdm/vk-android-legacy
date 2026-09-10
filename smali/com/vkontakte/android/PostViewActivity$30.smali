.class Lcom/vkontakte/android/PostViewActivity$30;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$30;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$30;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->removeImages(Landroid/view/View;)V

    .line 1152
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$30;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->clear()V

    .line 1153
    return-void
.end method
