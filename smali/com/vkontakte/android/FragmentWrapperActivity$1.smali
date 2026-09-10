.class Lcom/vkontakte/android/FragmentWrapperActivity$1;
.super Ljava/lang/Object;
.source "FragmentWrapperActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FragmentWrapperActivity;->setupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private displayOpts:I

.field private subtitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

.field private wasListNav:Z

.field private wasOpen:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->wasOpen:Z

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 214
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 208
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 162
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    .line 163
    iget-boolean v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->wasOpen:Z

    if-nez v1, :cond_1

    .line 164
    iput-boolean v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->wasOpen:Z

    .line 165
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 168
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 170
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v4, v5}, Lcom/vkontakte/android/FragmentWrapperActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5

    .line 176
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$000(Lcom/vkontakte/android/FragmentWrapperActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-static {v1, v3}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$002(Lcom/vkontakte/android/FragmentWrapperActivity;Z)Z

    .line 178
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-static {v3}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$100(Lcom/vkontakte/android/FragmentWrapperActivity;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-boolean v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->wasListNav:Z

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->displayOpts:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 184
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->invalidateOptionsMenu()V

    .line 202
    :cond_3
    :goto_1
    return-void

    .line 173
    :cond_4
    iput-boolean v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->wasOpen:Z

    goto :goto_0

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$000(Lcom/vkontakte/android/FragmentWrapperActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-static {v1, v2}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$002(Lcom/vkontakte/android/FragmentWrapperActivity;Z)Z

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->subtitle:Ljava/lang/CharSequence;

    .line 190
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->displayOpts:I

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->wasListNav:Z

    .line 193
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 195
    iget-boolean v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->wasListNav:Z

    if-eqz v1, :cond_6

    .line 196
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 198
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d0027

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 199
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$1;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_7
    move v1, v3

    .line 192
    goto :goto_2
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 158
    return-void
.end method
