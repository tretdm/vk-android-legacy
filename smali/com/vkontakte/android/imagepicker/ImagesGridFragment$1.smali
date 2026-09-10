.class Lcom/vkontakte/android/imagepicker/ImagesGridFragment$1;
.super Ljava/lang/Object;
.source "ImagesGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ImagesGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    .line 81
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
    .line 86
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$1;->this$0:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    check-cast p2, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {v0, p3, p2}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->openImage(ILcom/vkontakte/android/imagepicker/ui/LocalImageView;)V

    .line 87
    return-void
.end method
