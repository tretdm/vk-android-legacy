.class public Lcom/vkontakte/android/EmojiPopup;
.super Ljava/lang/Object;
.source "EmojiPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;,
        Lcom/vkontakte/android/EmojiPopup$StickerClickListener;
    }
.end annotation


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

.field private showStickers:Z

.field private stickerListener:Lcom/vkontakte/android/EmojiPopup$StickerClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "icon"    # I
    .param p4, "stickers"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/vkontakte/android/EmojiPopup$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/EmojiPopup$1;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    .line 59
    iput p3, p0, Lcom/vkontakte/android/EmojiPopup;->btnRes:I

    .line 60
    iput-boolean p4, p0, Lcom/vkontakte/android/EmojiPopup;->showStickers:Z

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EmojiPopup;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkontakte/android/EmojiPopup;->showStickers:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/EmojiPopup;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/EmojiPopup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiPopup$StickerClickListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->stickerListener:Lcom/vkontakte/android/EmojiPopup$StickerClickListener;

    return-object v0
.end method

.method private createEmojiPopup()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lcom/vkontakte/android/EmojiView;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/vkontakte/android/EmojiPopup;->showStickers:Z

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/EmojiView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    new-instance v1, Lcom/vkontakte/android/EmojiPopup$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/EmojiPopup$6;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/EmojiView;->setListener(Lcom/vkontakte/android/EmojiView$Listener;)V

    .line 215
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    .line 216
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "x":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 178
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 184
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
    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->loadRecents()V

    .line 189
    :cond_0
    return-void
.end method

.method public onKeyboardStateChanged(ZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 64
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iput-boolean p1, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardVisible:Z

    .line 66
    iput p2, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    .line 67
    iget v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    if-le v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 68
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

    .line 69
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

    .line 71
    :cond_2
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

    .line 72
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x53

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 77
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_4

    .line 78
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 80
    :cond_4
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    goto/16 :goto_0
.end method

.method public setStickerClickListener(Lcom/vkontakte/android/EmojiPopup$StickerClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/EmojiPopup$StickerClickListener;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPopup;->stickerListener:Lcom/vkontakte/android/EmojiPopup$StickerClickListener;

    .line 220
    return-void
.end method

.method public showEmojiPopup(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 87
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "show emoji popup "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", ime fullscreen="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v0, :cond_8

    .line 89
    if-eqz p1, :cond_7

    .line 90
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lcom/vkontakte/android/EmojiPopup;->showStickers:Z

    if-eqz v0, :cond_0

    const-string v0, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    :cond_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    const-string v8, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v6, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/vkontakte/android/EmojiPopup;->createEmojiPopup()V

    .line 95
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    const-string v1, "emoji"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "kbd_height"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v8, 0x43480000    # 200.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    .line 98
    :cond_2
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "PP Keyboard height = "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    if-ge v0, v1, :cond_3

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    .line 100
    :cond_3
    iget-boolean v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardVisible:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_4

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v8, 0x53

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v8, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 106
    iget-boolean v0, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardVisible:Z

    if-nez v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/vkontakte/android/EmojiPopup;->keyboardHeight:I

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/vkontakte/android/EmojiPopup$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/EmojiPopup$2;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 166
    .end local v6    # "filter":Landroid/content/IntentFilter;
    :goto_1
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/vkontakte/android/EmojiPopup;->showStickers:Z

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->updateStickers()V

    .line 169
    :cond_5
    return-void

    .line 110
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 121
    .end local v6    # "filter":Landroid/content/IntentFilter;
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/vkontakte/android/EmojiPopup;->btnRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/EmojiPopup$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/EmojiPopup$3;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 130
    :cond_8
    if-eqz p1, :cond_c

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/vkontakte/android/EmojiPopup;->createEmojiPopup()V

    .line 132
    :cond_9
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/vkontakte/android/EmojiPopup;->showStickers:Z

    if-eqz v0, :cond_a

    const-string v0, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    :cond_a
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->receiver:Landroid/content/BroadcastReceiver;

    const-string v8, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v6, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    const/high16 v1, 0x43af0000    # 350.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 138
    new-instance v3, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;

    iget-boolean v0, p0, Lcom/vkontakte/android/EmojiPopup;->showStickers:Z

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    :goto_2
    invoke-direct {v3, v0}, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;-><init>(I)V

    .line 139
    .local v3, "bd":Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->contentView:Landroid/view/View;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 142
    .local v5, "anchor":Landroid/view/View;
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v1, v8

    neg-int v1, v1

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v1, v8}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 143
    const/4 v0, 0x2

    new-array v2, v0, [I

    .local v2, "eloc":[I
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 144
    .local v4, "aloc":[I
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiView:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v0, Lcom/vkontakte/android/EmojiPopup$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/EmojiPopup$4;-><init>(Lcom/vkontakte/android/EmojiPopup;[ILcom/vkontakte/android/EmojiPopup$BackgroundDrawable;[ILandroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/vkontakte/android/EmojiPopup$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/EmojiPopup$5;-><init>(Lcom/vkontakte/android/EmojiPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/16 :goto_1

    .line 138
    .end local v2    # "eloc":[I
    .end local v3    # "bd":Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;
    .end local v4    # "aloc":[I
    .end local v5    # "anchor":Landroid/view/View;
    :cond_b
    const v0, -0x14110e

    goto :goto_2

    .line 163
    .end local v6    # "filter":Landroid/content/IntentFilter;
    :cond_c
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup;->emojiPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_1
.end method
