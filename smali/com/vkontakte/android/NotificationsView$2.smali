.class Lcom/vkontakte/android/NotificationsView$2;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$2;->this$0:Lcom/vkontakte/android/NotificationsView;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 162
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/NotificationEntry;

    iget-object v1, v3, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 163
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget v3, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/NotificationEntry;

    iget-object v3, v3, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "tag":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/NotificationEntry;

    iget-object v1, v3, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    .line 164
    :cond_0
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Entry = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz v1, :cond_1

    .line 166
    iget v3, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "title"

    iget-object v4, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 169
    const-string v3, "gid"

    iget v4, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v3, "tid"

    iget v4, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v3, "offset"

    iget v4, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    rem-int/lit8 v5, v5, 0x14

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v4, "BoardTopicViewFragment"

    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$2;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v4, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 180
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_1
    :goto_0
    return-void

    .line 174
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v3, "entry"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    const-string v4, "PostViewFragment"

    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$2;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v4, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
