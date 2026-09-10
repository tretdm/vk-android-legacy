.class Lcom/vkontakte/android/VideoListView$15;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoAdd$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->addVideo(Lcom/vkontakte/android/api/VideoFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;

.field final synthetic val$vf:Lcom/vkontakte/android/api/VideoFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$15;->this$0:Lcom/vkontakte/android/VideoListView;

    iput-object p2, p0, Lcom/vkontakte/android/VideoListView$15;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$15;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 650
    return-void
.end method

.method public success(I)V
    .locals 6
    .param p1, "vid"    # I

    .prologue
    const/4 v5, 0x0

    .line 643
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$15;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$2400(Lcom/vkontakte/android/VideoListView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$15;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$2500(Lcom/vkontakte/android/VideoListView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$15;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$2500(Lcom/vkontakte/android/VideoListView;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$15;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$1800(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$15;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$15;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$15;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0357

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView$15;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 645
    return-void
.end method
