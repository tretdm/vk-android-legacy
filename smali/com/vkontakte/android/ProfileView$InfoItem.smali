.class Lcom/vkontakte/android/ProfileView$InfoItem;
.super Ljava/lang/Object;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InfoItem"
.end annotation


# static fields
.field public static final TYPE_COUNTER:I = 0x4

.field public static final TYPE_HEADER:I = 0x2

.field public static final TYPE_REGULAR:I = 0x0

.field public static final TYPE_RELATIVE:I = 0x1

.field public static final TYPE_STATUS:I = 0x3


# instance fields
.field public data:Ljava/lang/CharSequence;

.field public subData:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_type"    # I
    .param p2, "_title"    # Ljava/lang/String;
    .param p3, "_data"    # Ljava/lang/CharSequence;
    .param p4, "_subdata"    # Ljava/lang/String;
    .param p5, "_tag"    # Ljava/lang/String;

    .prologue
    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    iput p1, p0, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    .line 1892
    iput-object p2, p0, Lcom/vkontakte/android/ProfileView$InfoItem;->title:Ljava/lang/String;

    .line 1893
    iput-object p3, p0, Lcom/vkontakte/android/ProfileView$InfoItem;->data:Ljava/lang/CharSequence;

    .line 1894
    iput-object p4, p0, Lcom/vkontakte/android/ProfileView$InfoItem;->subData:Ljava/lang/String;

    .line 1895
    iput-object p5, p0, Lcom/vkontakte/android/ProfileView$InfoItem;->tag:Ljava/lang/String;

    .line 1896
    return-void
.end method
