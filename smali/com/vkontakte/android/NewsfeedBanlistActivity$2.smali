.class Lcom/vkontakte/android/NewsfeedBanlistActivity$2;
.super Ljava/lang/Object;
.source "NewsfeedBanlistActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedDeleteBan$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedBanlistActivity;->unban(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;I)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    iput p2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    const v1, 0x7f0d00ce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 137
    iget v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->val$id:I

    if-lez v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 139
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v3, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->val$id:I

    if-ne v2, v3, :cond_0

    .line 140
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    const v3, 0x7f0d018b

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$300(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->notifyDataSetChanged()V

    .line 155
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$500(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 156
    return-void

    .line 146
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 147
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v3, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->val$id:I

    if-ne v2, v3, :cond_3

    .line 148
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    const v3, 0x7f0d018a

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
