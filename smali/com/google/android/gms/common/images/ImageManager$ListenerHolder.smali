.class abstract Lcom/google/android/gms/common/images/ImageManager$ListenerHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ListenerHolder"
.end annotation


# instance fields
.field final synthetic an:Lcom/google/android/gms/common/images/ImageManager;

.field protected final mDefaultResId:I

.field protected final mHashCode:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/images/ImageManager;II)V
    .locals 0
    .param p2, "hashCode"    # I
    .param p3, "defaultResId"    # I

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$ListenerHolder;->an:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/images/ImageManager$ListenerHolder;->mHashCode:I

    iput p3, p0, Lcom/google/android/gms/common/images/ImageManager$ListenerHolder;->mDefaultResId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/images/ImageManager;IILcom/google/android/gms/common/images/ImageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/images/ImageManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/android/gms/common/images/ImageManager$1;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/images/ImageManager$ListenerHolder;-><init>(Lcom/google/android/gms/common/images/ImageManager;II)V

    return-void
.end method


# virtual methods
.method public abstract handleCachedDrawable(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/images/ImageManager$ListenerHolder;->mHashCode:I

    return v0
.end method

.method public abstract onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract shouldLoadImage(Landroid/net/Uri;)Z
.end method
