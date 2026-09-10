.class Lcom/vkontakte/android/EmojiPopup$4;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiPopup;

.field private final synthetic val$aloc:[I

.field private final synthetic val$anchor:Landroid/view/View;

.field private final synthetic val$bd:Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;

.field private final synthetic val$eloc:[I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiPopup;[ILcom/vkontakte/android/EmojiPopup$BackgroundDrawable;[ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPopup$4;->this$0:Lcom/vkontakte/android/EmojiPopup;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$eloc:[I

    iput-object p3, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$bd:Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;

    iput-object p4, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$aloc:[I

    iput-object p5, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$anchor:Landroid/view/View;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$4;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$1(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$4;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$1(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$eloc:[I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/EmojiView;->getLocationOnScreen([I)V

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$bd:Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$aloc:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$eloc:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPopup$4;->val$anchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->setArrowX(I)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
