.class public final Lde/ankri/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/ankri/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Switch:[I

.field public static final Switch_switchMinWidth:I = 0x6

.field public static final Switch_switchPadding:I = 0x7

.field public static final Switch_switchTextAppearance:I = 0x5

.field public static final Switch_textOff:I = 0x3

.field public static final Switch_textOn:I = 0x2

.field public static final Switch_thumb:I = 0x0

.field public static final Switch_thumbTextPadding:I = 0x4

.field public static final Switch_track:I = 0x1

.field public static final TextAppearanceSwitch:[I

.field public static final TextAppearanceSwitch_fontFamily:I = 0x4

.field public static final TextAppearanceSwitch_textColor:I = 0x0

.field public static final TextAppearanceSwitch_textColorHighlight:I = 0x5

.field public static final TextAppearanceSwitch_textColorHint:I = 0x6

.field public static final TextAppearanceSwitch_textColorLink:I = 0x7

.field public static final TextAppearanceSwitch_textSize:I = 0x1

.field public static final TextAppearanceSwitch_textStyle:I = 0x2

.field public static final TextAppearanceSwitch_typeface:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/ankri/R$styleable;->Switch:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lde/ankri/R$styleable;->TextAppearanceSwitch:[I

    .line 79
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data

    .line 71
    :array_1
    .array-data 4
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
