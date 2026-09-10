.class Lcom/vkontakte/android/NewsfeedBanlistActivity$1;
.super Ljava/lang/Object;
.source "NewsfeedBanlistActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGetBanned$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedBanlistActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    const v1, 0x7f08006b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "_groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v2, 0x12c

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$1(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$2(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$4(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->notifyDataSetChanged()V

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$5(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    iget-object v0, v0, Lcom/vkontakte/android/NewsfeedBanlistActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$3(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 121
    return-void
.end method
