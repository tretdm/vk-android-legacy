.class Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImagesGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ImagesGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagesListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;->this$0:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;-><init>(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;->this$0:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->access$0(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 211
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 217
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;->this$0:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->access$1(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    :goto_0
    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;->this$0:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->access$0(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, v2, p2, p1, v1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->getView(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 221
    return-object p2

    .line 217
    .end local v0    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    move-object v0, v1

    goto :goto_0
.end method
