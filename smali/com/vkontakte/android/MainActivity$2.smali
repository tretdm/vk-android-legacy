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

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommunitySelected(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 227
    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;-><init>()V

    .line 228
    .local v1, "fragment":Lcom/vkontakte/android/fragments/ProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    neg-int v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 231
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f080012

    const-string v4, "content"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 232
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v2}, Lcom/vkontakte/android/MainActivity;->access$1(Lcom/vkontakte/android/MainActivity;)Lcom/vkontakte/android/ui/MenuOverlayView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 233
    return-void
.end method

.method public onMenuItemSelected(I)V
    .locals 12
    .param p1, "item"    # I

    .prologue
    const/4 v9, 0x1

    const v11, 0x7f080012

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v1, "args":Landroid/os/Bundle;
    sparse-switch p1, :sswitch_data_0

    .line 210
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v7}, Lcom/vkontakte/android/MainActivity;->access$3(Lcom/vkontakte/android/MainActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    new-instance v2, Landroid/app/Fragment;

    invoke-direct {v2}, Landroid/app/Fragment;-><init>()V

    .line 212
    .local v2, "f":Landroid/app/Fragment;
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v7, v11, v2, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 214
    .end local v2    # "f":Landroid/app/Fragment;
    :cond_0
    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v3, v1}, Lcom/actionbarsherlock/app/SherlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 216
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v7, v11, v3, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 217
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 218
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "class"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v7, "args"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v7, v4}, Lcom/vkontakte/android/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 222
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v7}, Lcom/vkontakte/android/MainActivity;->access$1(Lcom/vkontakte/android/MainActivity;)Lcom/vkontakte/android/ui/MenuOverlayView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 223
    :goto_1
    return-void

    .line 150
    :sswitch_0
    new-instance v3, Lcom/vkontakte/android/fragments/ProfileFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/ProfileFragment;-><init>()V

    .line 151
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    const-string v7, "id"

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 154
    :sswitch_1
    new-instance v3, Lcom/vkontakte/android/fragments/FriendsFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;-><init>()V

    .line 155
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    goto :goto_0

    .line 157
    :sswitch_2
    new-instance v3, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;-><init>()V

    .line 158
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    const-string v7, "news"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 161
    :sswitch_3
    new-instance v3, Lcom/vkontakte/android/fragments/VideoListFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/VideoListFragment;-><init>()V

    .line 162
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    goto/16 :goto_0

    .line 165
    :sswitch_4
    new-instance v3, Lcom/vkontakte/android/fragments/AudioListFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/AudioListFragment;-><init>()V

    .line 166
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    goto/16 :goto_0

    .line 168
    :sswitch_5
    new-instance v3, Lcom/vkontakte/android/fragments/DialogsFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/DialogsFragment;-><init>()V

    .line 169
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    goto/16 :goto_0

    .line 171
    :sswitch_6
    new-instance v3, Lcom/vkontakte/android/fragments/GroupsFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/GroupsFragment;-><init>()V

    .line 172
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    goto/16 :goto_0

    .line 174
    :sswitch_7
    new-instance v3, Lcom/vkontakte/android/fragments/NewsFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/NewsFragment;-><init>()V

    .line 175
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    goto/16 :goto_0

    .line 177
    :sswitch_8
    new-instance v3, Lcom/vkontakte/android/fragments/FeedbackFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/FeedbackFragment;-><init>()V

    .line 178
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    goto/16 :goto_0

    .line 180
    :sswitch_9
    new-instance v3, Lcom/vkontakte/android/fragments/FaveFragment;

    .end local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-direct {v3}, Lcom/vkontakte/android/fragments/FaveFragment;-><init>()V

    .line 181
    .restart local v3    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    goto/16 :goto_0

    .line 184
    :sswitch_a
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 185
    new-instance v5, Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-direct {v5}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 186
    .local v5, "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v7, v11, v5, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 187
    new-instance v2, Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/SettingsFragment;-><init>()V

    .line 188
    .restart local v2    # "f":Landroid/app/Fragment;
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v7, v11, v2, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 189
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v7, v9}, Lcom/vkontakte/android/MainActivity;->access$2(Lcom/vkontakte/android/MainActivity;Z)V

    .line 190
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v7}, Lcom/vkontakte/android/MainActivity;->access$1(Lcom/vkontakte/android/MainActivity;)Lcom/vkontakte/android/ui/MenuOverlayView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    goto/16 :goto_1

    .line 193
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v5    # "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    const-class v10, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 205
    :sswitch_b
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "com.vkontakte.android.fragments."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v9, "_class"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragment;

    move-object v3, v0

    .line 206
    sget-object v7, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 207
    :catch_0
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        -0x77359400 -> :sswitch_b
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
    .end sparse-switch
.end method

.method public onUserSelected(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 136
    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;-><init>()V

    .line 137
    .local v1, "fragment":Lcom/vkontakte/android/fragments/ProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f080012

    const-string v4, "content"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 141
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v2}, Lcom/vkontakte/android/MainActivity;->access$1(Lcom/vkontakte/android/MainActivity;)Lcom/vkontakte/android/ui/MenuOverlayView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 142
    return-void
.end method
