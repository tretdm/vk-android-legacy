.class Lcom/vkontakte/android/ProfileView$2;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0801cc

    const v8, 0x7f080103

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    .local v0, "act":Ljava/lang/String;
    const-string v2, "photos"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v2, "user_name_ins"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameIns:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 189
    const-string v3, "PhotoAlbumsListFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 244
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v2, "friends"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 194
    const-string v3, "FriendsFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 195
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_2
    const-string v2, "mutual_friends"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 197
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 199
    const-string v2, "mutual"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    const-string v3, "FriendsFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 201
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_3
    const-string v2, "videos"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 202
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 203
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v2, :cond_4

    .line 205
    const-string v2, "username_ins"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameIns:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 206
    :cond_4
    const-string v3, "title"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801dc

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    :goto_1
    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v2

    if-gez v2, :cond_5

    .line 208
    const-string v2, "groupName"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "groupPhoto"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_5
    const-string v3, "VideoListFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 206
    :cond_6
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 212
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_7
    const-string v2, "audios"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 214
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v3, "username"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 216
    const-string v3, "AudioListFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 215
    :cond_8
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 217
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_9
    const-string v2, "groups"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 218
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 219
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801d8

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 221
    const-string v3, "GroupsFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 222
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_a
    const-string v2, "topics"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 223
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 224
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "gid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v3, "BoardTopicsFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 226
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_b
    const-string v2, "members"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 228
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "gid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v2, "type"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080109

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 231
    const-string v3, "UserListFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 232
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_c
    const-string v2, "followers"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 233
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 234
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v2, "type"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08018a

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 237
    const-string v3, "UserListFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 238
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_d
    const-string v2, "docs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 241
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v3, "DocumentsFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$2;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
