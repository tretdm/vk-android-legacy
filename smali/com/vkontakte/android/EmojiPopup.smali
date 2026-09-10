.class public Lcom/vkontakte/android/EmojiPopup;
.super Ljava/lang/Object;
.source "EmojiPopup.java"


# static fields
.field public static final ACTION_HIDE_POPUP:Ljava/lang/String; = "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"


# instance fields
.field private btnRes:I

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private emojiPopup:Landroid/widget/PopupWindow;

.field private emojiView:Lcom/vkontakte/android/EmojiView;

.field private keyboardHeight:I

.field private keyboardVisible:Z

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "icon"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/vkontakte/android/EmojiPopup$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiPopup$1;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    .line 39
    iput p3, p0, Lcom/vkontakte/android/EmojiPopup;->btnRes:I

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EmojiPopup;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/EmojiPopup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    return-object v0
.end method

.method private createEmojiPopup()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/vkontakte/android/EmojiView;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/EmojiView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    new-instance v1, Lcom/vkontakte/android/EmojiPopup$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/EmojiPopup$4;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/EmojiView;->setListener(Lcom/vkontakte/android/EmojiView$Listener;)V

    .line 142
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    .line 143
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "x":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRecents()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->loadRecents()V

    .line 122
    :cond_0
    return-void
.end method

.method public onKeyboardStateChanged(ZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardVisible:Z

    .line 44
    iput p2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    .line 45
    iget v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    if-le v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    const-string v1, "emoji"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kbd_height"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAVED: kbd_height"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ST Keyboard height = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 53
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x53

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 55
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_2

    .line 56
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 58
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 61
    :cond_3
    return-void
.end method

.method public showEmojiPopup(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x43480000    # 200.0f

    const/high16 v8, 0x42c80000    # 100.0f

    const v7, 0x7f08017b

    const/4 v6, 0x0

    .line 64
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 65
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "show emoji popup "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ime fullscreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p1, :cond_4

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/EmojiPopup;->createEmojiPopup()V

    .line 71
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    const-string v3, "emoji"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kbd_height"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    .line 74
    :cond_1
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PP Keyboard height = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 77
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 78
    iget-object v3, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x53

    invoke-virtual {v3, v2, v4, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 79
    iget-boolean v2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardVisible:Z

    if-nez v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    iget v3, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 81
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020162

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/vkontakte/android/EmojiPopup$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/EmojiPopup$2;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 102
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 83
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020165

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, p0, Lcom/vkontakte/android/EmojiPopup;->btnRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 96
    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    new-instance v3, Lcom/vkontakte/android/EmojiPopup$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/EmojiPopup$3;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
