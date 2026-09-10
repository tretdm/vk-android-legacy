.class Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$1;
.super Ljava/lang/Object;
.source "ImagesGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$1;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    check-cast p2, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {v0, p3, p2}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->openImage(ILcom/vkontakte/android/mediapicker/ui/LocalImageView;)V

    .line 80
    return-void
.end method
