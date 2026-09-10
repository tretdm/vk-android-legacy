.class Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6$1;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFooterView()Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    move-result-object v0

    const/16 v1, 0x143

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 183
    :cond_1
    return-void
.end method
