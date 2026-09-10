.class Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter$1;
.super Ljava/lang/Object;
.source "EmojiPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter$1;->this$1:Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter$1;->this$1:Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;->access$1(Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;)Lcom/vkontakte/android/EmojiPickerView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPickerView;->access$1(Lcom/vkontakte/android/EmojiPickerView;)Lcom/vkontakte/android/EmojiPickerView$SelectionListener;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Lcom/vkontakte/android/EmojiPickerView$SelectionListener;->onEmojiSelected(Ljava/lang/String;)V

    .line 192
    return-void
.end method
