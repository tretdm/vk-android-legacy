.class Lcom/vkontakte/android/FragmentWrapperActivity$1;
.super Ljava/lang/Object;
.source "FragmentWrapperActivity.java"

# interfaces
.implements Lcom/vkontakte/android/MenuListView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FragmentWrapperActivity;->setupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FragmentWrapperActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    const-string v2, "ProfileFragment"

    invoke-static {v1, v2, v0, p2}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$0(Lcom/vkontakte/android/FragmentWrapperActivity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 229
    return-void
.end method

.method public onMenuItemSelected(IZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 151
    const-string v2, ""

    .line 152
    .local v2, "fragment":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v1, "args":Landroid/os/Bundle;
    sparse-switch p1, :sswitch_data_0

    .line 220
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-static {v4, v2, v1, p2}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$0(Lcom/vkontakte/android/FragmentWrapperActivity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 222
    :cond_0
    :goto_1
    return-void

    .line 155
    :sswitch_0
    const-string v2, "ProfileFragment"

    .line 156
    const-string v4, "id"

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 159
    :sswitch_1
    const-string v2, "FriendsFragment"

    .line 160
    goto :goto_0

    .line 162
    :sswitch_2
    const-string v2, "PhotoAlbumsListFragment"

    .line 163
    const-string v4, "news"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 166
    :sswitch_3
    const-string v2, "VideoListFragment"

    .line 167
    goto :goto_0

    .line 170
    :sswitch_4
    const-string v2, "AudioListFragment"

    .line 171
    goto :goto_0

    .line 173
    :sswitch_5
    const-string v2, "DialogsFragment"

    .line 174
    goto :goto_0

    .line 176
    :sswitch_6
    const-string v2, "GroupsFragment"

    .line 177
    goto :goto_0

    .line 179
    :sswitch_7
    const-string v2, "NewsFragment"

    .line 180
    goto :goto_0

    .line 182
    :sswitch_8
    const-string v2, "FeedbackFragment"

    .line 183
    goto :goto_0

    .line 185
    :sswitch_9
    const-string v2, "FaveFragment"

    .line 186
    goto :goto_0

    .line 188
    :sswitch_a
    const-string v2, "BrowseUsersFragment"

    .line 189
    goto :goto_0

    .line 199
    :sswitch_b
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 200
    iget-object v4, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    const-class v7, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/FragmentWrapperActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    iget-object v4, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-static {v4}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$1(Lcom/vkontakte/android/FragmentWrapperActivity;)Lcom/vkontakte/android/ui/MenuOverlayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    goto :goto_1

    .line 204
    :cond_1
    const-string v2, "_settings"

    .line 205
    goto :goto_0

    .line 214
    :sswitch_c
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v5, "_class"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    sget-object v4, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77359400 -> :sswitch_c
        0x0 -> :sswitch_0
        0x1 -> :sswitch_7
        0x2 -> :sswitch_8
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x5 -> :sswitch_6
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
    .end sparse-switch
.end method

.method public onUserSelected(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    const-string v2, "ProfileFragment"

    invoke-static {v1, v2, v0, p2}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$0(Lcom/vkontakte/android/FragmentWrapperActivity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 147
    return-void
.end method
