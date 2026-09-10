.class Lcom/vkontakte/android/MainActivity$1;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field displayOpts:I

.field final synthetic this$0:Lcom/vkontakte/android/MainActivity;

.field wasListNav:Z

.field wasOpen:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 7
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    const/4 v6, 0x0

    .line 94
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    .line 95
    iput-boolean v6, p0, Lcom/vkontakte/android/MainActivity$1;->wasListNav:Z

    iput-boolean v6, p0, Lcom/vkontakte/android/MainActivity$1;->wasOpen:Z

    .line 96
    iput v6, p0, Lcom/vkontakte/android/MainActivity$1;->displayOpts:I

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 100
    const-string v0, "vk"

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/MainActivity$1;->onDrawerSlide(Landroid/view/View;F)V

    .line 102
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    .line 113
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    .line 114
    iget-boolean v1, p0, Lcom/vkontakte/android/MainActivity$1;->wasOpen:Z

    if-nez v1, :cond_1

    .line 115
    iput-boolean v2, p0, Lcom/vkontakte/android/MainActivity$1;->wasOpen:Z

    .line 116
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 118
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 119
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 121
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v4, v5}, Lcom/vkontakte/android/MainActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 126
    :cond_1
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5

    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/MainActivity;->access$000(Lcom/vkontakte/android/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v1, v3}, Lcom/vkontakte/android/MainActivity;->access$002(Lcom/vkontakte/android/MainActivity;Z)Z

    .line 129
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v3}, Lcom/vkontakte/android/MainActivity;->access$100(Lcom/vkontakte/android/MainActivity;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    iget-boolean v1, p0, Lcom/vkontakte/android/MainActivity$1;->wasListNav:Z

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/MainActivity$1;->displayOpts:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 134
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->invalidateOptionsMenu()V

    .line 151
    :cond_3
    :goto_1
    return-void

    .line 124
    :cond_4
    iput-boolean v3, p0, Lcom/vkontakte/android/MainActivity$1;->wasOpen:Z

    goto :goto_0

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v1}, Lcom/vkontakte/android/MainActivity;->access$000(Lcom/vkontakte/android/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v1, v2}, Lcom/vkontakte/android/MainActivity;->access$002(Lcom/vkontakte/android/MainActivity;Z)Z

    .line 140
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/MainActivity$1;->displayOpts:I

    .line 141
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/vkontakte/android/MainActivity$1;->wasListNav:Z

    .line 142
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 144
    iget-boolean v1, p0, Lcom/vkontakte/android/MainActivity$1;->wasListNav:Z

    if-eqz v1, :cond_6

    .line 145
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 147
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d0027

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 148
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MainActivity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_7
    move v1, v3

    .line 141
    goto :goto_2
.end method
