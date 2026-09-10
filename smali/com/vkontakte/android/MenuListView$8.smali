.class Lcom/vkontakte/android/MenuListView$8;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Lcom/vkontakte/android/MenuListView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    const-string v2, "ProfileFragment"

    invoke-static {v1, v2, v0, p2}, Lcom/vkontakte/android/MenuListView;->access$1100(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 356
    return-void
.end method

.method public onMenuItemSelected(IZ)V
    .locals 6
    .param p1, "item"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 295
    const-string v2, ""

    .line 296
    .local v2, "fragment":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 297
    .local v1, "args":Landroid/os/Bundle;
    sparse-switch p1, :sswitch_data_0

    .line 347
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 348
    iget-object v4, p0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v4, v2, v1, p2}, Lcom/vkontakte/android/MenuListView;->access$1100(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 349
    :cond_0
    return-void

    .line 299
    :sswitch_0
    const-string v2, "ProfileFragment"

    .line 300
    const-string v4, "id"

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 303
    :sswitch_1
    const-string v2, "FriendsFragment"

    .line 304
    goto :goto_0

    .line 306
    :sswitch_2
    const-string v2, "PhotosFragment"

    .line 307
    goto :goto_0

    .line 309
    :sswitch_3
    const-string v2, "OwnerVideoListFragment"

    .line 310
    goto :goto_0

    .line 313
    :sswitch_4
    const-string v2, "AudioListFragment"

    .line 314
    goto :goto_0

    .line 316
    :sswitch_5
    const-string v2, "DialogsFragment"

    .line 317
    goto :goto_0

    .line 319
    :sswitch_6
    const-string v2, "GroupsFragment"

    .line 320
    goto :goto_0

    .line 322
    :sswitch_7
    const-string v2, "NewsFragment"

    .line 323
    goto :goto_0

    .line 325
    :sswitch_8
    const-string v2, "FeedbackFragment"

    .line 326
    goto :goto_0

    .line 328
    :sswitch_9
    const-string v2, "GamesFragment"

    .line 329
    goto :goto_0

    .line 331
    :sswitch_a
    const-string v2, "FaveFragment"

    .line 332
    goto :goto_0

    .line 334
    :sswitch_b
    const-string v2, "BrowseUsersFragment"

    .line 335
    goto :goto_0

    .line 337
    :sswitch_c
    const-string v2, "SettingsFragment"

    .line 338
    goto :goto_0

    .line 341
    :sswitch_d
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v5, "_class"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    sget-object v4, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 297
    :sswitch_data_0
    .sparse-switch
        -0x77359400 -> :sswitch_d
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
        0xc -> :sswitch_c
    .end sparse-switch
.end method

.method public onUserSelected(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "allowBack"    # Z

    .prologue
    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    const-string v2, "ProfileFragment"

    invoke-static {v1, v2, v0, p2}, Lcom/vkontakte/android/MenuListView;->access$1100(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 291
    return-void
.end method
