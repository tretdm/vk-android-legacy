.class Lcom/vkontakte/android/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/vkontakte/android/MenuListView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    const-string v2, "ProfileFragment"

    invoke-static {v1, v2, v0, p2}, Lcom/vkontakte/android/MainActivity;->access$1(Lcom/vkontakte/android/MainActivity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 209
    return-void
.end method

.method public onMenuItemSelected(IZ)V
    .locals 6
    .param p1, "item"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 137
    const-string v2, ""

    .line 138
    .local v2, "fragment":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v1, "args":Landroid/os/Bundle;
    sparse-switch p1, :sswitch_data_0

    .line 200
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v4, v2, v1, p2}, Lcom/vkontakte/android/MainActivity;->access$1(Lcom/vkontakte/android/MainActivity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 202
    :cond_0
    return-void

    .line 141
    :sswitch_0
    const-string v2, "ProfileFragment"

    .line 142
    const-string v4, "id"

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 145
    :sswitch_1
    const-string v2, "FriendsFragment"

    .line 146
    goto :goto_0

    .line 148
    :sswitch_2
    const-string v2, "PhotoAlbumsListFragment"

    .line 149
    const-string v4, "news"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 152
    :sswitch_3
    const-string v2, "VideoListFragment"

    .line 153
    goto :goto_0

    .line 155
    :sswitch_4
    const-string v2, "AudioListFragment"

    .line 156
    goto :goto_0

    .line 158
    :sswitch_5
    const-string v2, "DialogsFragment"

    .line 159
    goto :goto_0

    .line 161
    :sswitch_6
    const-string v2, "GroupsFragment"

    .line 162
    goto :goto_0

    .line 164
    :sswitch_7
    const-string v2, "NewsFragment"

    .line 165
    goto :goto_0

    .line 167
    :sswitch_8
    const-string v2, "FeedbackFragment"

    .line 168
    goto :goto_0

    .line 170
    :sswitch_9
    const-string v2, "FaveFragment"

    .line 171
    goto :goto_0

    .line 173
    :sswitch_a
    const-string v2, "BrowseUsersFragment"

    .line 174
    goto :goto_0

    .line 184
    :sswitch_b
    const-string v2, "_settings"

    .line 185
    goto :goto_0

    .line 194
    :sswitch_c
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v5, "_class"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    sget-object v4, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 139
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
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    const-string v2, "ProfileFragment"

    invoke-static {v1, v2, v0, p2}, Lcom/vkontakte/android/MainActivity;->access$1(Lcom/vkontakte/android/MainActivity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 133
    return-void
.end method
