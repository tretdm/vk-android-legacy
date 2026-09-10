.class Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$6(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$6(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$8(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$6(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$9(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V

    .line 329
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$6(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    goto :goto_0
.end method
